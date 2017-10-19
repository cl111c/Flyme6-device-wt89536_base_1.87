.class final Lcom/aspire/g3wlan/client/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/i;


# direct methods
.method private constructor <init>(Lcom/aspire/g3wlan/client/sdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/j;->a:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aspire/g3wlan/client/sdk/i;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aspire/g3wlan/client/sdk/j;-><init>(Lcom/aspire/g3wlan/client/sdk/i;)V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
