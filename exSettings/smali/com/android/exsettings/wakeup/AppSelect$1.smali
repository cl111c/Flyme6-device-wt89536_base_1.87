.class Lcom/android/exsettings/wakeup/AppSelect$1;
.super Ljava/lang/Object;
.source "AppSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/AppSelect;->showConfirmDialog(IILjava/lang/String;Ljava/lang/String;ILandroid/view/View;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/AppSelect;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/AppSelect;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/exsettings/wakeup/AppSelect$1;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 530
    return-void
.end method
