.class Lcom/android/exsettings/LowMemoryStorage$3;
.super Ljava/lang/Object;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/LowMemoryStorage;->refreshDialog()V
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
    .line 149
    iput-object p1, p0, Lcom/android/exsettings/LowMemoryStorage$3;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage$3;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v0}, Lcom/android/exsettings/LowMemoryStorage;->finish()V

    .line 153
    return-void
.end method
