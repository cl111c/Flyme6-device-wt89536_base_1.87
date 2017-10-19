.class Lcom/android/exsettings/wakeup/GestureSettings$3;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureSettings;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$3;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    return-void
.end method
