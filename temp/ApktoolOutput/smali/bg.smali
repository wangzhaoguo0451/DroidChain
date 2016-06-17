.class final Lbg;
.super Lbd;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbb;)Landroid/app/Notification;
    .locals 6
    .parameter

    .prologue
    .line 553
    iget-object v0, p1, Lbb;->l:Landroid/app/Notification;

    .line 554
    iget-object v1, p1, Lbb;->a:Landroid/content/Context;

    iget-object v2, p1, Lbb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lbb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lbb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 556
    iget-object v1, p1, Lbb;->a:Landroid/content/Context;

    iget-object v2, p1, Lbb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lbb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Lbb;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 559
    return-object v0
.end method
