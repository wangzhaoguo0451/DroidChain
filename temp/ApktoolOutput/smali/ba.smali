.class public final Lba;
.super Lbn;
.source "NotificationCompat.java"


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2169
    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1825
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lba;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1826
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1829
    invoke-direct {p0}, Lbn;-><init>()V

    .line 1830
    const/4 v0, 0x0

    iput v0, p0, Lba;->b:I

    .line 1831
    invoke-static {p1}, Lbb;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lba;->c:Ljava/lang/CharSequence;

    .line 1832
    iput-object p2, p0, Lba;->d:Landroid/app/PendingIntent;

    .line 1833
    iput-object p3, p0, Lba;->a:Landroid/os/Bundle;

    .line 1834
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1839
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lba;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lba;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lba;->a:Landroid/os/Bundle;

    return-object v0
.end method
