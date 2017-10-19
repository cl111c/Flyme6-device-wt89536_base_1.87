.class public final Lcom/aspire/g3wlan/client/sdk/l;
.super Lcom/aspire/g3wlan/client/sdk/ResultObject;


# static fields
.field public static a:Lcom/aspire/g3wlan/client/sdk/l;

.field public static b:Lcom/aspire/g3wlan/client/sdk/l;

.field public static c:Lcom/aspire/g3wlan/client/sdk/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x3e7

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/l;

    const/4 v1, 0x1

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/h;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/aspire/g3wlan/client/sdk/l;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/l;->a:Lcom/aspire/g3wlan/client/sdk/l;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/l;

    invoke-static {v4}, Lcom/aspire/g3wlan/client/sdk/h;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/aspire/g3wlan/client/sdk/l;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/l;->b:Lcom/aspire/g3wlan/client/sdk/l;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/l;

    invoke-static {v5}, Lcom/aspire/g3wlan/client/sdk/h;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v5, v1}, Lcom/aspire/g3wlan/client/sdk/l;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/l;->c:Lcom/aspire/g3wlan/client/sdk/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/ResultObject;-><init>()V

    return-void
.end method

.method private constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/ResultObject;-><init>(ZILjava/lang/String;)V

    return-void
.end method
