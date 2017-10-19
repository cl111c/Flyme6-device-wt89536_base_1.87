.class public final Lorg/htmlparser/e/v;
.super Lorg/htmlparser/c/c;


# static fields
.field private static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/v;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const-string v0, "HTTP-EQUIV"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v0

    const-string v1, "CONTENT"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/v;->i:[Ljava/lang/String;

    return-object v0
.end method
