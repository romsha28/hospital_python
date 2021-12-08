

@api_view(["POST"])
@permission_classes([AllowAny])
def Register_Users(request):
    try:
        data = []
        serializer = RegistrationSerializer(data=request.data)
        if serializer.is_valid():
            account = serializer.save()
            account.is_active = True
            account.save()
            token = Token.objects.get_or_create(user=account)[0].key
            data["message"] = "user registered successfully"
            data["email"] = account.email
            data["username"] = account.username
            data["token"] = token
        else:
            data = serializer.errors
        return Response(data)
    except IntegrityError as e:
        account=User.objects.get(username='')
        account.delete()
        raise ValidationError({"400": f'{str(e)}'})
    except KeyError as e:
        print(e)
        raise ValidationError({"400": f'Field {str(e)} missing'})

@api_view(["POST"])
@permission_classes([AllowAny])
def login_user(request):
        data = {}
        reqBody = json.loads(request.body)
        email1 = reqBody['Email_Address']
        print(email1)
        password = reqBody['password']
        try:
            Account = User.objects.get(Email_Address=email1)
        except BaseException as e:
            raise ValidationError({"400": f'{str(e)}'})
        token = Token.objects.get_or_create(user=Account)[0].key
        print(token)
        if not check_password(password, Account.password):
            raise ValidationError({"message": "Incorrect Login credentials"})
        if Account:
            if Account.is_active:
                print(request.user)
                login(request, Account)
                data["message"] = "user logged in"
                data["email_address"] = Account.email
                Res = {"data": data, "token": token}
                return Response(Res)

@api_view(["GET"])
@permission_classes([IsAuthenticated])
def User_logout(request):
    request.user.auth_token.delete()
    logout(request)
    return Response('User Logged out successfully')

    