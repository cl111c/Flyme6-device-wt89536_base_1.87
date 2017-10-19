.class Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MusicPicker$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field duration:Landroid/widget/TextView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field play_indicator:Landroid/widget/ImageView;

.field radio:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/exsettings/MusicPicker$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MusicPicker$TrackListAdapter;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->this$1:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
