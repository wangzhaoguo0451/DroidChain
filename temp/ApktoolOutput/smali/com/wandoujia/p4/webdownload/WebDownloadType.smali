.class public final enum Lcom/wandoujia/p4/webdownload/WebDownloadType;
.super Ljava/lang/Enum;
.source "WebDownloadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/WebDownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/WebDownloadType;

.field public static final enum MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

.field private static final generatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/wandoujia/p4/webdownload/WebDownloadType;",
            "Lgrk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/WebDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/WebDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/WebDownloadType;

    sget-object v1, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->$VALUES:[Lcom/wandoujia/p4/webdownload/WebDownloadType;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->generatorMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public static getTypeByName(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/WebDownloadType;
    .locals 1
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerDownloadGenerator(Lcom/wandoujia/p4/webdownload/WebDownloadType;Lgrk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->generatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/WebDownloadType;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/WebDownloadType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->$VALUES:[Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/WebDownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/WebDownloadType;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized createWebDownloader(Landroid/content/Context;)Lgsq;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    sget-object v0, Lgrj;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 50
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    .line 58
    :goto_1
    monitor-exit p0

    return-object v0

    .line 43
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v2, Lcom/wandoujia/p4/webdownload/WebDownloadType;->generatorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrk;

    .line 55
    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ldkt;

    invoke-direct {v0, p1}, Ldkt;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    .line 58
    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getTypeIndex()I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->ordinal()I

    move-result v0

    return v0
.end method
