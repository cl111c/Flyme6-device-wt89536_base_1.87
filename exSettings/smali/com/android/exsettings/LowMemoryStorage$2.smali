.class Lcom/android/exsettings/LowMemoryStorage$2;
.super Ljava/lang/Object;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/LowMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/LowMemoryStorage;


# direct methods
.method constructor <init>(Lcom/android/exsettings/LowMemoryStorage;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/exsettings/LowMemoryStorage$2;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v2, 0x10000000

    .line 90
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage$2;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/LowMemoryStorage;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage$2;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v1}, Lcom/android/exsettings/LowMemoryStorage;->finish()V

    .line 103
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .restart local v0    # "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MANAGE_PACKAGE_FILEMANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage$2;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/LowMemoryStorage;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage$2;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v1}, Lcom/android/exsettings/LowMemoryStorage;->finish()V

    goto :goto_0
.end method
