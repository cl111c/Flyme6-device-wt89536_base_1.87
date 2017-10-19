.class Lcom/android/exsettings/notification/SoundSettings$6;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$6;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 315
    .local v0, "val":Z
    const-string v2, "persist.sys.silent"

    if-eqz v0, :cond_0

    const-string v1, "0"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_0
    const-string v1, "1"

    goto :goto_0
.end method
