.class Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageManager.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/base/storage/StorageManager;


# direct methods
.method private constructor <init>(Lcom/wandoujia/base/storage/StorageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;->a:Lcom/wandoujia/base/storage/StorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/base/storage/StorageManager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;-><init>(Lcom/wandoujia/base/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1

    .line 303
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;->a:Lcom/wandoujia/base/storage/StorageManager;

    iget-object v1, p0, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;->a:Lcom/wandoujia/base/storage/StorageManager;

    #calls: Lcom/wandoujia/base/storage/StorageManager;->getAvailableStorages()Ljava/util/List;
    invoke-static {v1}, Lcom/wandoujia/base/storage/StorageManager;->access$200(Lcom/wandoujia/base/storage/StorageManager;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/wandoujia/base/storage/StorageManager;->access$102(Lcom/wandoujia/base/storage/StorageManager;Ljava/util/List;)Ljava/util/List;

    .line 306
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;->a:Lcom/wandoujia/base/storage/StorageManager;

    #calls: Lcom/wandoujia/base/storage/StorageManager;->checkDefaultPathAvailable()V
    invoke-static {v0}, Lcom/wandoujia/base/storage/StorageManager;->access$300(Lcom/wandoujia/base/storage/StorageManager;)V

    .line 309
    :cond_1
    return-void
.end method
