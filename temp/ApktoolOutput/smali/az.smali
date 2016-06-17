.class public final Laz;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Lbd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 828
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 829
    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    .line 845
    :goto_0
    return-void

    .line 830
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 831
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 832
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 833
    new-instance v0, Lbk;

    invoke-direct {v0}, Lbk;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 834
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 835
    new-instance v0, Lbj;

    invoke-direct {v0}, Lbj;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 836
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 837
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 838
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 839
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 840
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 841
    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0

    .line 843
    :cond_6
    new-instance v0, Lbd;

    invoke-direct {v0}, Lbd;-><init>()V

    sput-object v0, Laz;->a:Lbd;

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method static synthetic a(Lax;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba;

    invoke-interface {p0, v0}, Lax;->a(Lbn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()Lbd;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Laz;->a:Lbd;

    return-object v0
.end method
