.class public final Lavg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lawc;

.field private synthetic b:Landroid/os/Handler;

.field private synthetic c:I

.field private synthetic d:Lcom/google/android/gms/analytics/CampaignTrackingService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lawc;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lavg;->d:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Lavg;->a:Lawc;

    iput-object p3, p0, Lavg;->b:Landroid/os/Handler;

    iput p4, p0, Lavg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lavg;->d:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Lavg;->a:Lawc;

    iget-object v2, p0, Lavg;->b:Landroid/os/Handler;

    iget v3, p0, Lavg;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Lawc;Landroid/os/Handler;I)V

    return-void
.end method
