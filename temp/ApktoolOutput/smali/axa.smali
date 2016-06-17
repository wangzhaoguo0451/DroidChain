.class final Laxa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/ComponentName;

.field private synthetic b:Lawy;


# direct methods
.method constructor <init>(Lawy;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Laxa;->b:Lawy;

    iput-object p2, p0, Laxa;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Laxa;->b:Lawy;

    iget-object v0, v0, Lawy;->a:Laww;

    iget-object v1, p0, Laxa;->a:Landroid/content/ComponentName;

    invoke-static {}, Laws;->i()V

    iget-object v2, v0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Laww;->b:Lcom/google/android/gms/analytics/internal/zzac;

    const-string v2, "Disconnected from device AnalyticsService"

    invoke-virtual {v0, v2, v1}, Laww;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0}, Lawk;->c()V

    :cond_0
    return-void
.end method
