.class public final Lazb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic c:Lcom/google/android/gms/common/api/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzn;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lazb;->a:I

    iput-object p3, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/zzn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzn;->a(Lcom/google/android/gms/common/api/zzn;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    invoke-static {v0}, Layk;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    iget-object v1, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    iget-object v3, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    invoke-static {v0, v1, v2, v3}, Layk;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lazb;->c:Lcom/google/android/gms/common/api/zzn;

    iget v1, p0, Lazb;->a:I

    iget-object v2, p0, Lazb;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/zzn;->a(Lcom/google/android/gms/common/api/zzn;ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
