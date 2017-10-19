.class public abstract Lcom/aspire/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Lcom/aspire/a/c/a;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Lcom/aspire/a/b/a;

.field protected e:Lcom/aspire/a/a/a/f;

.field protected f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/aspire/a/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aspire/a/a/b/a;->a()Lcom/aspire/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/aspire/a/a/a/e;->a:Lcom/aspire/a/c/a;

    iput p1, p0, Lcom/aspire/a/a/a/e;->b:I

    iput-object p2, p0, Lcom/aspire/a/a/a/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/aspire/a/a/a/e;->d:Lcom/aspire/a/b/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/aspire/a/a/a/e;->b:I

    return v0
.end method

.method public final a(Lcom/aspire/a/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/a/a/a/e;->e:Lcom/aspire/a/a/a/f;

    return-void
.end method
