.class final Lbf;
.super Lbe;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Lbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbb;)Landroid/app/Notification;
    .locals 13
    .parameter

    .prologue
    .line 759
    new-instance v0, Lbm;

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

    iget-boolean v11, p1, Lbb;->h:Z

    iget-object v12, p1, Lbb;->m:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v12}, Lbm;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZLjava/util/ArrayList;)V

    .line 766
    iget-object v1, p1, Lbb;->k:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Laz;->a(Lax;Ljava/util/ArrayList;)V

    .line 767
    invoke-static {}, Laz;->a()V

    .line 768
    invoke-interface {v0}, Lay;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
