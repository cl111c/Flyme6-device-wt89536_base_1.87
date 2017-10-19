.class public Lorg/htmlparser/lexer/Lexer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/c;


# static fields
.field public static a:Z

.field protected static e:I


# instance fields
.field protected b:Lorg/htmlparser/lexer/c;

.field protected c:Lorg/htmlparser/lexer/a;

.field protected d:Lorg/htmlparser/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/lexer/Lexer;->a:Z

    const/4 v0, -0x1

    sput v0, Lorg/htmlparser/lexer/Lexer;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/htmlparser/lexer/c;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/c;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    new-instance v0, Lorg/htmlparser/lexer/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/lexer/a;)V

    invoke-virtual {p0, p0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/c;)V

    return-void
.end method

.method private a(II)Lorg/htmlparser/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->d:Lorg/htmlparser/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    invoke-interface {v0, v1, p1, p2}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IILjava/util/Vector;)Lorg/htmlparser/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->d:Lorg/htmlparser/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IZ)Lorg/htmlparser/b;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/16 v11, 0x2a

    const/16 v10, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v9, 0xffff

    move v4, v1

    move v5, v1

    :cond_0
    :goto_0
    if-nez v5, :cond_1a

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v9, v0, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x1b

    if-ne v3, v0, :cond_a

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v9, v0, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x24

    if-ne v3, v0, :cond_9

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v9, v0, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    const/16 v3, 0x42

    if-ne v3, v0, :cond_8

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    move v0, v1

    move v3, v1

    :cond_4
    :goto_1
    if-nez v3, :cond_0

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    invoke-virtual {v7, v6}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v9, v7, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v8, 0x1b

    if-ne v8, v7, :cond_4

    move v0, v2

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x28

    if-ne v0, v7, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :pswitch_2
    const/16 v8, 0x4a

    if-ne v8, v7, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p2, :cond_c

    if-nez v4, :cond_c

    const/16 v3, 0x27

    if-eq v3, v0, :cond_b

    const/16 v3, 0x22

    if-ne v3, v0, :cond_c

    :cond_b
    move v4, v0

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_d

    if-eqz v4, :cond_d

    const/16 v3, 0x5c

    if-ne v3, v0, :cond_d

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-eq v9, v0, :cond_0

    const/16 v3, 0x5c

    if-eq v3, v0, :cond_0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_0

    :cond_d
    if-eqz p2, :cond_e

    if-ne v0, v4, :cond_e

    move v4, v1

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_16

    if-nez v4, :cond_16

    if-ne v0, v10, :cond_16

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v9, v0, :cond_f

    move v5, v2

    goto/16 :goto_0

    :cond_f
    if-ne v10, v0, :cond_11

    :cond_10
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-eq v9, v0, :cond_0

    const/16 v3, 0xa

    if-ne v3, v0, :cond_10

    goto/16 :goto_0

    :cond_11
    if-ne v11, v0, :cond_15

    :cond_12
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-eq v9, v0, :cond_13

    if-ne v11, v0, :cond_12

    :cond_13
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v0, v11, :cond_14

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v3, v6}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    :cond_14
    if-eq v9, v0, :cond_0

    if-ne v10, v0, :cond_12

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_0

    :cond_16
    if-nez v4, :cond_0

    const/16 v3, 0x3c

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v9, v0, :cond_17

    move v5, v2

    goto/16 :goto_0

    :cond_17
    if-eq v10, v0, :cond_18

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_18

    const/16 v3, 0x21

    if-eq v3, v0, :cond_18

    const/16 v3, 0x25

    if-eq v3, v0, :cond_18

    const/16 v3, 0x3f

    if-ne v3, v0, :cond_19

    :cond_18
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v5, v2

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/Vector;[I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    aget v0, p2, v3

    aget v1, p2, v6

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    aget v4, p2, v6

    aget v5, p2, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/htmlparser/lexer/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    return-void
.end method

.method private b(I)Lorg/htmlparser/b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v10, 0x2

    const v13, 0xffff

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x8

    new-array v12, v0, [I

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    aput v0, v12, v6

    move v7, v6

    move v1, v6

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    add-int/lit8 v0, v7, 0x1

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/a;->a()I

    move-result v2

    aput v2, v12, v0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "how the fuck did we get in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-eq v13, v0, :cond_1

    const/16 v2, 0x3e

    if-eq v2, v0, :cond_1

    const/16 v2, 0x3c

    if-ne v2, v0, :cond_3

    :cond_1
    const/16 v1, 0x3c

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    add-int/lit8 v0, v7, 0x1

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    aput v1, v12, v0

    :cond_2
    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->a(Ljava/util/Vector;[I)V

    move v1, v8

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->a(Ljava/util/Vector;[I)V

    move v7, v8

    goto :goto_0

    :pswitch_1
    if-eq v13, v0, :cond_4

    const/16 v2, 0x3e

    if-eq v2, v0, :cond_4

    const/16 v2, 0x3c

    if-ne v2, v0, :cond_6

    :cond_4
    const/16 v1, 0x3c

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    add-int/lit8 v0, v7, 0x1

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    aput v1, v12, v0

    :cond_5
    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    move v1, v8

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7

    aget v0, v12, v10

    aput v0, v12, v9

    move v7, v9

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x3d

    if-ne v2, v0, :cond_0

    move v7, v10

    goto/16 :goto_0

    :pswitch_2
    if-eq v13, v0, :cond_8

    const/16 v2, 0x3e

    if-ne v2, v0, :cond_9

    :cond_8
    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    aget v2, v12, v8

    aget v3, v12, v10

    aget v4, v12, v10

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v8

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x27

    if-ne v2, v0, :cond_a

    const/4 v0, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x3

    aget v3, v12, v3

    aput v3, v12, v2

    move v7, v0

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x22

    if-ne v2, v0, :cond_b

    const/4 v0, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x3

    aget v3, v12, v3

    aput v3, v12, v2

    move v7, v0

    goto/16 :goto_0

    :cond_b
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    move v7, v0

    goto/16 :goto_0

    :pswitch_3
    if-eq v13, v0, :cond_c

    const/16 v2, 0x3e

    if-ne v2, v0, :cond_d

    :cond_c
    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->c(Ljava/util/Vector;[I)V

    move v1, v8

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->c(Ljava/util/Vector;[I)V

    const/4 v0, 0x4

    aget v0, v12, v0

    aput v0, v12, v6

    move v7, v6

    goto/16 :goto_0

    :pswitch_4
    if-ne v13, v0, :cond_e

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->d(Ljava/util/Vector;[I)V

    move v1, v8

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x27

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->d(Ljava/util/Vector;[I)V

    const/4 v0, 0x5

    aget v0, v12, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v12, v6

    move v7, v6

    goto/16 :goto_0

    :pswitch_5
    if-ne v13, v0, :cond_f

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->e(Ljava/util/Vector;[I)V

    move v1, v8

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x22

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->e(Ljava/util/Vector;[I)V

    aget v0, v12, v9

    add-int/lit8 v0, v0, 0x1

    aput v0, v12, v6

    move v7, v6

    goto/16 :goto_0

    :pswitch_6
    if-ne v13, v0, :cond_10

    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    aget v0, v12, v9

    aput v0, v12, v6

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v7, v6

    goto/16 :goto_0

    :cond_10
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3d

    if-ne v2, v0, :cond_11

    aget v0, v12, v9

    aput v0, v12, v10

    const/4 v0, 0x3

    const/4 v2, 0x7

    aget v2, v12, v2

    aput v2, v12, v0

    move v7, v10

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0, v11, v12}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    aget v0, v12, v9

    aput v0, v12, v6

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v7, v6

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v11}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/b;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(II)Lorg/htmlparser/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->d:Lorg/htmlparser/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    invoke-interface {v0, v1, p1, p2}, Lorg/htmlparser/c;->b(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Vector;[I)V
    .locals 7

    const/4 v4, -0x1

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private c(I)Lorg/htmlparser/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/16 v8, 0x3e

    const/4 v4, 0x2

    const/16 v7, 0x2d

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v2, v3

    move v0, v3

    :cond_0
    :goto_0
    if-nez v0, :cond_b

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v5

    const v6, 0xffff

    if-ne v6, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "how the fuck did we get in state "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-ne v8, v5, :cond_2

    move v0, v1

    :cond_2
    if-ne v7, v5, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v3}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    if-ne v7, v5, :cond_6

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v5

    const v6, 0xffff

    if-ne v6, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    if-ne v8, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v2, v4

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v3}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    if-ne v7, v5, :cond_7

    const/4 v2, 0x3

    goto :goto_0

    :cond_7
    const v6, 0xffff

    if-ne v6, v5, :cond_0

    invoke-direct {p0, p1, v3}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    if-ne v7, v5, :cond_8

    const/4 v2, 0x4

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_0

    :pswitch_4
    if-ne v8, v5, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lorg/htmlparser/lexer/Lexer;->a:Z

    if-nez v6, :cond_a

    if-eq v7, v5, :cond_0

    const/16 v6, 0x21

    if-eq v6, v5, :cond_0

    :cond_a
    move v2, v4

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->b(II)Lorg/htmlparser/b;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Ljava/util/Vector;[I)V
    .locals 7

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private d(I)Lorg/htmlparser/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move v7, v1

    :goto_0
    if-nez v7, :cond_0

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "how the fuck did we get in state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    add-int/lit8 v2, p1, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v2, v3

    goto :goto_0

    :sswitch_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    sparse-switch v1, :sswitch_data_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x3

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :sswitch_8
    sparse-switch v1, :sswitch_data_3

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_a
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :sswitch_b
    sparse-switch v1, :sswitch_data_4

    goto :goto_0

    :sswitch_c
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_d
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lorg/htmlparser/lexer/d;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v8}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/b;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "processing instruction with no content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x22 -> :sswitch_8
        0x27 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x3e -> :sswitch_3
        0x3f -> :sswitch_4
        0xffff -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x3e -> :sswitch_7
        0xffff -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_9
        0xffff -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x27 -> :sswitch_c
        0xffff -> :sswitch_d
    .end sparse-switch
.end method

.method private d(Ljava/util/Vector;[I)V
    .locals 7

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    aget v5, p2, v5

    const/16 v6, 0x27

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private e(Ljava/util/Vector;[I)V
    .locals 7

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x6

    aget v5, p2, v5

    const/16 v6, 0x22

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lorg/htmlparser/b;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/16 v12, 0x2a

    const/16 v11, 0x2d

    const v10, 0xffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v6

    move v0, v1

    move v3, v1

    move v4, v1

    move v5, v1

    :cond_0
    :goto_0
    if-nez v4, :cond_16

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "how the fuck did we get in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v3, :cond_1

    const/16 v3, 0x27

    goto :goto_0

    :cond_1
    const/16 v7, 0x27

    if-ne v7, v3, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_3
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v3, :cond_2

    const/16 v3, 0x22

    goto :goto_0

    :cond_2
    const/16 v7, 0x22

    if-ne v7, v3, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_4
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v10, v7, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/16 v8, 0x5c

    if-eq v7, v8, :cond_0

    if-eq v7, v3, :cond_0

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto :goto_0

    :sswitch_5
    if-eqz p1, :cond_0

    if-nez v3, :cond_0

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v10, v7, :cond_4

    move v4, v2

    goto :goto_0

    :cond_4
    const/16 v8, 0x2f

    if-ne v8, v7, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    if-ne v12, v7, :cond_9

    :cond_6
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-eq v10, v7, :cond_7

    if-ne v12, v7, :cond_6

    :cond_7
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v7, v12, :cond_8

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v9, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v8, v9}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    :cond_8
    if-eq v10, v7, :cond_0

    const/16 v8, 0x2f

    if-ne v8, v7, :cond_6

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_0

    :sswitch_6
    if-eqz p1, :cond_a

    if-nez v3, :cond_0

    move v5, v2

    goto/16 :goto_0

    :cond_a
    move v5, v2

    goto/16 :goto_0

    :pswitch_1
    sparse-switch v7, :sswitch_data_1

    move v5, v1

    goto/16 :goto_0

    :sswitch_7
    move v4, v2

    goto/16 :goto_0

    :sswitch_8
    const/4 v5, 0x2

    goto/16 :goto_0

    :sswitch_9
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v10, v7, :cond_b

    move v4, v2

    goto/16 :goto_0

    :cond_b
    if-ne v11, v7, :cond_e

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v7

    if-ne v10, v7, :cond_c

    move v4, v2

    goto/16 :goto_0

    :cond_c
    if-ne v11, v7, :cond_d

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_d
    move v5, v1

    goto/16 :goto_0

    :cond_e
    move v5, v1

    goto/16 :goto_0

    :pswitch_2
    if-ne v10, v7, :cond_f

    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_f
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move v5, v1

    goto/16 :goto_0

    :pswitch_3
    if-ne v10, v7, :cond_11

    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_11
    if-ne v11, v7, :cond_17

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v10, v0, :cond_12

    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_12
    if-ne v11, v0, :cond_15

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    if-ne v10, v0, :cond_13

    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_13
    const/16 v7, 0x3e

    if-ne v7, v0, :cond_14

    move v0, v1

    move v5, v1

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, v6, v0}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    return-object v0

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2f -> :sswitch_5
        0x3c -> :sswitch_6
        0x5c -> :sswitch_4
        0xffff -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_9
        0x2f -> :sswitch_8
        0xffff -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;
    .locals 1

    new-instance v0, Lorg/htmlparser/c/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/htmlparser/c/c;-><init>(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)V

    return-object v0
.end method

.method public final a(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/h;
    .locals 1

    new-instance v0, Lorg/htmlparser/c/d;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/c/d;-><init>(Lorg/htmlparser/lexer/c;II)V

    return-object v0
.end method

.method public final a()Lorg/htmlparser/lexer/c;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/a;->a(I)V

    return-void
.end method

.method public final a(Lorg/htmlparser/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->d:Lorg/htmlparser/c;

    return-void
.end method

.method public final b(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/f;
    .locals 1

    new-instance v0, Lorg/htmlparser/c/b;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/c/b;-><init>(Lorg/htmlparser/lexer/c;II)V

    return-object v0
.end method

.method public final b()Lorg/htmlparser/lexer/a;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    return-object v0
.end method

.method public final c()Lorg/htmlparser/c;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->d:Lorg/htmlparser/c;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    return v0
.end method

.method public final f()Lorg/htmlparser/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->g()Lorg/htmlparser/b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lorg/htmlparser/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v0, -0x1

    sget v1, Lorg/htmlparser/lexer/Lexer;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->c(Lorg/htmlparser/lexer/a;)I

    move-result v0

    sget v1, Lorg/htmlparser/lexer/Lexer;->e:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/htmlparser/lexer/Lexer;->e:I

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v8

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    const v1, 0xffff

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x25

    if-ne v1, v0, :cond_d

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move v7, v1

    :cond_2
    :goto_1
    if-nez v7, :cond_a

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    sparse-switch v0, :sswitch_data_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "how the fuck did we get in state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    sparse-switch v1, :sswitch_data_2

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    add-int/lit8 v2, v8, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x2

    move v2, v3

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    add-int/lit8 v2, v8, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x2

    move v2, v3

    goto :goto_1

    :sswitch_6
    sparse-switch v1, :sswitch_data_3

    goto :goto_1

    :sswitch_7
    move v0, v1

    goto :goto_1

    :sswitch_8
    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :sswitch_9
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_5

    :cond_3
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    const v3, 0xffff

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x2a

    if-ne v1, v3, :cond_9

    :cond_6
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    const v3, 0xffff

    if-eq v3, v1, :cond_7

    const/16 v3, 0x2a

    if-ne v3, v1, :cond_6

    :cond_7
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_8

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    :cond_8
    const v3, 0xffff

    if-eq v3, v1, :cond_2

    const/16 v3, 0x2f

    if-ne v3, v1, :cond_6

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    goto/16 :goto_1

    :sswitch_b
    sparse-switch v1, :sswitch_data_4

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_c
    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_1

    :sswitch_d
    const/4 v0, 0x4

    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_1

    :sswitch_e
    sparse-switch v1, :sswitch_data_5

    goto/16 :goto_1

    :sswitch_f
    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_10
    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_1

    :sswitch_11
    sparse-switch v1, :sswitch_data_6

    goto/16 :goto_1

    :sswitch_12
    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_13
    const/4 v1, 0x1

    move v7, v1

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x4

    if-ne v1, v0, :cond_c

    if-eqz v2, :cond_b

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    new-instance v0, Lorg/htmlparser/lexer/d;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lorg/htmlparser/lexer/d;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/htmlparser/lexer/d;-><init>(Lorg/htmlparser/lexer/c;IIIIC)V

    invoke-virtual {v9, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, v8, v0, v9}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "jsp with no code!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x3f

    if-ne v1, v0, :cond_e

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    invoke-direct {p0, v8}, Lorg/htmlparser/lexer/Lexer;->d(I)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x2f

    if-eq v1, v0, :cond_f

    const/16 v1, 0x25

    if-eq v1, v0, :cond_f

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    invoke-direct {p0, v8}, Lorg/htmlparser/lexer/Lexer;->b(I)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x21

    if-ne v1, v0, :cond_14

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    const v1, 0xffff

    if-ne v1, v0, :cond_11

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->a(II)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x3e

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->b(II)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    const/16 v1, 0x2d

    if-ne v1, v0, :cond_13

    invoke-direct {p0, v8}, Lorg/htmlparser/lexer/Lexer;->c(I)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    invoke-direct {p0, v8}, Lorg/htmlparser/lexer/Lexer;->b(I)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->b:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/c;->b(Lorg/htmlparser/lexer/a;)V

    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lorg/htmlparser/lexer/Lexer;->a(IZ)Lorg/htmlparser/b;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x3 -> :sswitch_b
        0x22 -> :sswitch_e
        0x27 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x3d -> :sswitch_5
        0x3e -> :sswitch_4
        0x40 -> :sswitch_5
        0xffff -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_7
        0x25 -> :sswitch_9
        0x27 -> :sswitch_7
        0x2f -> :sswitch_a
        0x3e -> :sswitch_8
        0xffff -> :sswitch_8
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x3e -> :sswitch_d
        0xffff -> :sswitch_c
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x22 -> :sswitch_f
        0xffff -> :sswitch_10
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x27 -> :sswitch_12
        0xffff -> :sswitch_13
    .end sparse-switch
.end method

.method public final h()Lorg/htmlparser/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->a(Z)Lorg/htmlparser/b;

    move-result-object v0

    return-object v0
.end method
