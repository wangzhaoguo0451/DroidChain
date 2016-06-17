.class public final Lbb;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field public e:Landroid/app/PendingIntent;

.field public f:Landroid/graphics/Bitmap;

.field public g:Ljava/lang/CharSequence;

.field h:Z

.field public i:I

.field public j:I

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lba;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/app/Notification;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb;->h:Z

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbb;->k:Ljava/util/ArrayList;

    .line 911
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lbb;->l:Landroid/app/Notification;

    .line 934
    iput-object p1, p0, Lbb;->a:Landroid/content/Context;

    .line 937
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 938
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbb;->m:Ljava/util/ArrayList;

    .line 941
    return-void
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x1400

    .line 1570
    if-nez p0, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-object p0

    .line 1571
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1572
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1559
    invoke-static {}, Laz;->b()Lbd;

    move-result-object v0

    new-instance v1, Lbc;

    invoke-direct {v1}, Lbc;-><init>()V

    invoke-virtual {v0, p0}, Lbd;->a(Lbb;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 986
    return-object p0
.end method

.method public final a(J)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 949
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 1093
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1094
    return-object p0
.end method

.method public final a(Landroid/widget/RemoteViews;)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 1068
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1069
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 1009
    invoke-static {p1}, Lbb;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lbb;->b:Ljava/lang/CharSequence;

    .line 1010
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1459
    iget-object v0, p0, Lbb;->k:Ljava/util/ArrayList;

    new-instance v1, Lba;

    invoke-direct {v1, p1, p2}, Lba;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 1017
    invoke-static {p1}, Lbb;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lbb;->c:Ljava/lang/CharSequence;

    .line 1018
    return-object p0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1289
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)Lbb;
    .locals 1
    .parameter

    .prologue
    .line 1049
    invoke-static {p1}, Lbb;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lbb;->g:Ljava/lang/CharSequence;

    .line 1050
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Lbb;
    .locals 2
    .parameter

    .prologue
    .line 1126
    iget-object v0, p0, Lbb;->l:Landroid/app/Notification;

    invoke-static {p1}, Lbb;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1127
    return-object p0
.end method
