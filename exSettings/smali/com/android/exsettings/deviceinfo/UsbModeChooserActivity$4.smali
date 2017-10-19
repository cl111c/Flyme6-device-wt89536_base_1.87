.class Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    iput p2, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->access$100(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Lcom/android/exsettings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/UsbBackend;->setMode(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->access$000(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 147
    return-void
.end method
