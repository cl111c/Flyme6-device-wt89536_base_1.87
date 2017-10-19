.class public Lorg/htmlparser/c/c;
.super Lorg/htmlparser/c/a;

# interfaces
.implements Lorg/htmlparser/g;


# static fields
.field protected static final f:Lorg/htmlparser/d/b;

.field protected static h:Ljava/util/Hashtable;

.field private static final i:[Ljava/lang/String;


# instance fields
.field protected g:Ljava/util/Vector;

.field private j:Lorg/htmlparser/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/htmlparser/c/c;->i:[Ljava/lang/String;

    new-instance v0, Lorg/htmlparser/d/f;

    invoke-direct {v0}, Lorg/htmlparser/d/f;-><init>()V

    sput-object v0, Lorg/htmlparser/c/c;->f:Lorg/htmlparser/d/b;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "BLOCKQUOTE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "BODY"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "BR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "CENTER"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "DD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "DIR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "DIV"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "DL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "DT"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "FORM"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H1"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H2"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H3"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H4"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H5"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "H6"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "HEAD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "HR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "HTML"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "ISINDEX"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "LI"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "MENU"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "NOFRAMES"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "OL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "P"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "PRE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "TD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "TH"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "TITLE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/c/c;->h:Ljava/util/Hashtable;

    const-string v1, "UL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/htmlparser/c/c;-><init>(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/c/a;-><init>(Lorg/htmlparser/lexer/c;II)V

    sget-object v0, Lorg/htmlparser/c/c;->f:Lorg/htmlparser/d/b;

    iput-object v0, p0, Lorg/htmlparser/c/c;->j:Lorg/htmlparser/d/b;

    iput-object p4, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    iget-object v0, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/c/c;->l()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/htmlparser/c/c;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/htmlparser/c/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lorg/htmlparser/a;

    invoke-direct {v2, p1}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/htmlparser/a;->d()C

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v4

    goto :goto_2

    :cond_3
    move v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x2

    iget-object v4, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->e()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0, v2}, Lorg/htmlparser/a;->e(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    return-void
.end method

.method public final a(Lorg/htmlparser/d/b;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/c/c;->j:Lorg/htmlparser/d/b;

    return-void
.end method

.method public a(Lorg/htmlparser/g;)V
    .locals 0

    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/htmlparser/c/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/htmlparser/c/c;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/htmlparser/c/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/c/c;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/c/c;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/c/c;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public o()Lorg/htmlparser/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Lorg/htmlparser/d/b;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/c/c;->j:Lorg/htmlparser/d/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lorg/htmlparser/c/c;->a_()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/htmlparser/c/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "End"

    :goto_0
    new-instance v3, Lorg/htmlparser/lexer/a;

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v4

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    new-instance v4, Lorg/htmlparser/lexer/a;

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->d()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4d

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Tag"

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
