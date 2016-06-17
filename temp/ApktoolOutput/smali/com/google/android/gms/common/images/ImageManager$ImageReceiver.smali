.class public final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lazh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lazf;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Landroid/net/Uri;

    invoke-direct {v2, v3, v0}, Lazf;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
