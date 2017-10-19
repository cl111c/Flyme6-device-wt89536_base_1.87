.class final Lcom/aspire/g3wlan/client/sdk/b;
.super Lorg/htmlparser/a/a;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aspire/g3wlan/client/sdk/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/b;->a:Lcom/aspire/g3wlan/client/sdk/a;

    const-class v0, Lorg/htmlparser/e/k;

    invoke-direct {p0, v0}, Lorg/htmlparser/a/a;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/aspire/g3wlan/client/sdk/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/htmlparser/b;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/htmlparser/a/a;->a(Lorg/htmlparser/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/htmlparser/e/k;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/htmlparser/e/k;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/htmlparser/e/k;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
