.class final Landroid/app/SystemServiceRegistry$56;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/PowerGuru;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/PowerGuru;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 601
    const-string/jumbo v2, "powerguru"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 602
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IPowerGuru$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IPowerGuru;

    move-result-object v1

    .line 603
    .local v1, "service":Landroid/app/IPowerGuru;
    new-instance v2, Landroid/app/PowerGuru;

    invoke-direct {v2, v1, p1}, Landroid/app/PowerGuru;-><init>(Landroid/app/IPowerGuru;Landroid/content/Context;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$56;->createService(Landroid/app/ContextImpl;)Landroid/app/PowerGuru;

    move-result-object v0

    return-object v0
.end method
