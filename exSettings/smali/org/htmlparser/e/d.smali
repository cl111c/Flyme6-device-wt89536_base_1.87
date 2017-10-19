.class public final Lorg/htmlparser/e/d;
.super Lorg/htmlparser/e/f;


# static fields
.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LI"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/e/d;->k:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UL"

    aput-object v1, v0, v2

    const-string v1, "OL"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/d;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/e/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/d;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/d;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/d;->l:[Ljava/lang/String;

    return-object v0
.end method
