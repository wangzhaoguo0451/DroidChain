.class Lbj;
.super Lbd;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb;)Landroid/app/Notification;
    .locals 11
    .parameter

    .prologue
    .line 590
    new-instance v0, Lbr;

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

    invoke-direct/range {v0 .. v10}, Lbr;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;II)V

    .line 596
    iget-object v1, p1, Lbb;->k:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Laz;->a(Lax;Ljava/util/ArrayList;)V

    .line 597
    invoke-static {}, Laz;->a()V

    .line 598
    invoke-interface {v0}, Lay;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
