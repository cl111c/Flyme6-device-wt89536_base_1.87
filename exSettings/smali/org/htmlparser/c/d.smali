.class public final Lorg/htmlparser/c/d;
.super Lorg/htmlparser/c/a;

# interfaces
.implements Lorg/htmlparser/h;


# instance fields
.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/c;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/c/a;-><init>(Lorg/htmlparser/lexer/c;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/c/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/htmlparser/c/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/c/a;->a:Lorg/htmlparser/lexer/c;

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->c()I

    move-result v1

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/c;->a(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x4d

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->c()I

    move-result v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lorg/htmlparser/c/d;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Lorg/htmlparser/lexer/a;

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    new-instance v0, Lorg/htmlparser/lexer/a;

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    const-string v4, "Txt ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/c/a;->a:Lorg/htmlparser/lexer/c;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/htmlparser/util/j; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt v5, v0, :cond_0

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    :try_start_1
    const-string v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/htmlparser/util/j; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const-string v3, "Txt ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/htmlparser/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/htmlparser/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v5, v1, :cond_3

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_6
    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_7
    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
