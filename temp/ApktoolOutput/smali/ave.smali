.class public final Lave;
.super Ljava/lang/Object;

# interfaces
.implements Laxt;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lawc;

.field final synthetic c:Lcom/google/android/gms/analytics/AnalyticsService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/AnalyticsService;ILawc;)V
    .locals 0

    iput-object p1, p0, Lave;->c:Lcom/google/android/gms/analytics/AnalyticsService;

    iput p2, p0, Lave;->a:I

    iput-object p3, p0, Lave;->b:Lawc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lave;->c:Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Lcom/google/android/gms/analytics/AnalyticsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lavf;

    invoke-direct {v1, p0}, Lavf;-><init>(Lave;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
