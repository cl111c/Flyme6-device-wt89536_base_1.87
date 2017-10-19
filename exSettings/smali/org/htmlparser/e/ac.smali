.class public final Lorg/htmlparser/e/ac;
.super Lorg/htmlparser/e/f;


# static fields
.field private static final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SPAN"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/ac;->k:[Ljava/lang/String;

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

    sget-object v0, Lorg/htmlparser/e/ac;->k:[Ljava/lang/String;

    return-object v0
.end method
