.class public abstract Lorg/htmlparser/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/b;


# instance fields
.field protected a:Lorg/htmlparser/lexer/c;

.field protected b:I

.field protected c:I

.field protected d:Lorg/htmlparser/b;

.field protected e:Lorg/htmlparser/util/h;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/c;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/c/a;->a:Lorg/htmlparser/lexer/c;

    iput p2, p0, Lorg/htmlparser/c/a;->b:I

    iput p3, p0, Lorg/htmlparser/c/a;->c:I

    iput-object v0, p0, Lorg/htmlparser/c/a;->d:Lorg/htmlparser/b;

    iput-object v0, p0, Lorg/htmlparser/c/a;->e:Lorg/htmlparser/util/h;

    return-void
.end method


# virtual methods
.method public abstract a(Z)Ljava/lang/String;
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/htmlparser/c/a;->b:I

    return-void
.end method

.method public final a(Lorg/htmlparser/b;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/c/a;->d:Lorg/htmlparser/b;

    return-void
.end method

.method public final a(Lorg/htmlparser/lexer/c;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/c/a;->a:Lorg/htmlparser/lexer/c;

    return-void
.end method

.method public final a(Lorg/htmlparser/util/h;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/c/a;->e:Lorg/htmlparser/util/h;

    return-void
.end method

.method public a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V
    .locals 1

    invoke-interface {p2, p0}, Lorg/htmlparser/d;->a(Lorg/htmlparser/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    :cond_0
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lorg/htmlparser/c/a;->c:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lorg/htmlparser/c/a;->b:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lorg/htmlparser/c/a;->c:I

    return v0
.end method

.method public final e()Lorg/htmlparser/util/h;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/c/a;->e:Lorg/htmlparser/util/h;

    return-object v0
.end method

.method public f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    return-void
.end method

.method public final q()Lorg/htmlparser/lexer/c;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/c/a;->a:Lorg/htmlparser/lexer/c;

    return-object v0
.end method
