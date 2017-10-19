.class public abstract Lcom/aspire/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aspire/a/a/a/f;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Lcom/aspire/a/c/a;

.field protected c:Ljava/util/Map;

.field protected d:I

.field protected e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https"

    iput-object v0, p0, Lcom/aspire/a/a/a/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/aspire/a/a/b/a;->a()Lcom/aspire/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/aspire/a/a/a/a;->b:Lcom/aspire/a/c/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aspire/a/a/a/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aspire/a/a/a/a;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/aspire/a/a/a/e;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/aspire/a/a/a/e;->f:Z

    invoke-virtual {p1, p0}, Lcom/aspire/a/a/a/e;->a(Lcom/aspire/a/a/a/f;)V

    iget-object v0, p0, Lcom/aspire/a/a/a/a;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/aspire/a/a/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
