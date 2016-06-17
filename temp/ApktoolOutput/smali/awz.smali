.class final Lawz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/internal/zzac;

.field private synthetic b:Lawy;


# direct methods
.method constructor <init>(Lawy;Lcom/google/android/gms/analytics/internal/zzac;)V
    .locals 0

    iput-object p1, p0, Lawz;->b:Lawy;

    iput-object p2, p0, Lawz;->a:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lawz;->b:Lawy;

    iget-object v0, v0, Lawy;->a:Laww;

    invoke-virtual {v0}, Laww;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawz;->b:Lawy;

    iget-object v0, v0, Lawy;->a:Laww;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Laww;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lawz;->b:Lawy;

    iget-object v0, v0, Lawy;->a:Laww;

    iget-object v1, p0, Lawz;->a:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-static {}, Laws;->i()V

    iput-object v1, v0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-virtual {v0}, Laww;->c()V

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0}, Lawk;->d()V

    :cond_0
    return-void
.end method
