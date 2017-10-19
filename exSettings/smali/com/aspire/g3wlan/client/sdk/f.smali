.class public final enum Lcom/aspire/g3wlan/client/sdk/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/aspire/g3wlan/client/sdk/f;

.field public static final enum b:Lcom/aspire/g3wlan/client/sdk/f;

.field private static final synthetic c:[Lcom/aspire/g3wlan/client/sdk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/f;

    const-string v1, "IS_CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/f;->a:Lcom/aspire/g3wlan/client/sdk/f;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/f;

    const-string v1, "UN_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/f;->b:Lcom/aspire/g3wlan/client/sdk/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aspire/g3wlan/client/sdk/f;

    sget-object v1, Lcom/aspire/g3wlan/client/sdk/f;->a:Lcom/aspire/g3wlan/client/sdk/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aspire/g3wlan/client/sdk/f;->b:Lcom/aspire/g3wlan/client/sdk/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/f;->c:[Lcom/aspire/g3wlan/client/sdk/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
