.class final Lcom/aspire/g3wlan/client/sdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/i;


# direct methods
.method private constructor <init>(Lcom/aspire/g3wlan/client/sdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/k;->a:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aspire/g3wlan/client/sdk/i;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aspire/g3wlan/client/sdk/k;-><init>(Lcom/aspire/g3wlan/client/sdk/i;)V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
