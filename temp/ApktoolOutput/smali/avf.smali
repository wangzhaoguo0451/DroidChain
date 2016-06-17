.class final Lavf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lave;


# direct methods
.method constructor <init>(Lave;)V
    .locals 0

    iput-object p1, p0, Lavf;->a:Lave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lavf;->a:Lave;

    iget-object v0, v0, Lave;->c:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Lavf;->a:Lave;

    iget v1, v1, Lave;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavf;->a:Lave;

    iget-object v0, v0, Lave;->b:Lawc;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lawc;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
