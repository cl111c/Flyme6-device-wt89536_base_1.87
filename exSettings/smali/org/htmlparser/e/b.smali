.class public final Lorg/htmlparser/e/b;
.super Lorg/htmlparser/c/c;


# static fields
.field private static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BASE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/b;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "HREF"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/c;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/b;->i:[Ljava/lang/String;

    return-object v0
.end method
