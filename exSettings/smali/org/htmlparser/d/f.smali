.class public Lorg/htmlparser/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/h;)Lorg/htmlparser/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    invoke-interface {p1}, Lorg/htmlparser/b;->f()V

    return-object p1
.end method
