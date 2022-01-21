

class CustomAuthToken(ObtainAuthToken):

    authentication_classes = [TokenAuthentication]

    def post(self, request, *args, **kwargs):
        ...
        return Response({...})