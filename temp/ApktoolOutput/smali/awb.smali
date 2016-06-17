.class public final Lawb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile a:Lavo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lavo;

    invoke-direct {v0}, Lavo;-><init>()V

    sput-object v0, Lawb;->a:Lavo;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lawc;->b()Lawc;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lawc;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lawb;->a:Lavo;

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lawb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laxu;->b:Laxv;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lawc;->b()Lawc;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lawc;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lawb;->a:Lavo;

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lawb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v0, Laxu;->b:Laxv;

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lawb;->a:Lavo;

    if-eqz v1, :cond_0

    sget-object v1, Lawb;->a:Lavo;

    iget v1, v1, Lavo;->a:I

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
