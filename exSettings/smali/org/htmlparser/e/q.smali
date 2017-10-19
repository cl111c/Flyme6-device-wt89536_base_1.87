.class public final Lorg/htmlparser/e/q;
.super Lorg/htmlparser/c/c;


# static fields
.field private static final j:[Ljava/lang/String;


# instance fields
.field protected i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMG"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/q;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/htmlparser/c/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/e/q;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/q;->j:[Ljava/lang/String;

    return-object v0
.end method
