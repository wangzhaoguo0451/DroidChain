.class public final Lcom/google/android/gms/common/internal/zzi$zzd;
.super Lcom/google/android/gms/common/internal/zzo$zza;


# instance fields
.field private final a:I


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v2, v0}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi$zzd;->a:I

    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzi;->a:Landroid/os/Handler;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzi;->a:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, -0x1

    new-instance v5, Lazt;

    invoke-direct {v5}, Lazt;-><init>()V

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v2, v0}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi$zzd;->a:I

    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzi;->a:Landroid/os/Handler;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzi;->a:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, -0x1

    new-instance v5, Lazs;

    invoke-direct {v5}, Lazs;-><init>()V

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
