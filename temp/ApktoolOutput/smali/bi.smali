.class final Lbi;
.super Lbd;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbb;)Landroid/app/Notification;
    .locals 11
    .parameter

    .prologue
    .line 578
    new-instance v0, Lbp;

    iget-object v1, p1, Lbb;->a:Landroid/content/Context;

    iget-object v2, p1, Lbb;->l:Landroid/app/Notification;

    iget-object v3, p1, Lbb;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Lbb;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Lbb;->g:Ljava/lang/CharSequence;

    iget-object v6, p1, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v7, p1, Lbb;->e:Landroid/app/PendingIntent;

    iget-object v8, p1, Lbb;->f:Landroid/graphics/Bitmap;

    iget v9, p1, Lbb;->i:I

    iget v10, p1, Lbb;->j:I

    invoke-direct/range {v0 .. v10}, Lbp;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;II)V

    .line 583
    invoke-interface {v0}, Lay;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
