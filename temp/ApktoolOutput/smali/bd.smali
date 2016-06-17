.class Lbd;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb;)Landroid/app/Notification;
    .locals 5
    .parameter

    .prologue
    .line 476
    iget-object v0, p1, Lbb;->l:Landroid/app/Notification;

    .line 477
    iget-object v1, p1, Lbb;->a:Landroid/content/Context;

    iget-object v2, p1, Lbb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lbb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lbb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 480
    return-object v0
.end method
