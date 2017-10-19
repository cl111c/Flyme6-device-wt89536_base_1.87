.class public Lcom/aspire/g3wlan/client/sdk/LoginResult;
.super Lcom/aspire/g3wlan/client/sdk/ResultObject;


# static fields
.field public static ALREADY_LOGIN:Lcom/aspire/g3wlan/client/sdk/LoginResult;

.field public static CMCCAUTO_CONNECTED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

.field public static LOGIN_CANCELLED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

.field public static LOGIN_SUCCESS:Lcom/aspire/g3wlan/client/sdk/LoginResult;

.field public static NOT_READY:Lcom/aspire/g3wlan/client/sdk/LoginResult;

.field public static START_CONNECT_TO_CMCCAUTO:Lcom/aspire/g3wlan/client/sdk/LoginResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x3e8

    const/4 v6, -0x2

    const/4 v5, -0x3

    const/4 v4, -0x4

    const/4 v3, 0x0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    const/4 v1, 0x1

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->LOGIN_SUCCESS:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-static {v7}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v7, v1}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->ALREADY_LOGIN:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-static {v6}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v6, v1}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->NOT_READY:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-static {v5}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v5, v1}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->START_CONNECT_TO_CMCCAUTO:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    const/16 v1, 0x3e9

    const/16 v2, 0x3e9

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->CMCCAUTO_CONNECTED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-static {v4}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->LOGIN_CANCELLED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/ResultObject;-><init>()V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/ResultObject;-><init>(ZILjava/lang/String;)V

    return-void
.end method
