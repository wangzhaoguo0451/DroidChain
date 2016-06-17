.class Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;
.super Ljava/lang/Object;
.source "UnZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcvk;

.field private currentSize:J

.field private final destPath:Ljava/lang/String;

.field private final filter:Lcvl;

.field private final sourceFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/wandoujia/gamepacket/UnZipManager;

.field private final token:Ljava/lang/String;

.field private totalSize:J

.field private unzippedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcvl;Lcvk;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->filter:Lcvl;

    .line 131
    iput-object p3, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->sourceFilePath:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->destPath:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->currentSize:J

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->unzippedFiles:Ljava/util/Set;

    .line 136
    return-void
.end method


# virtual methods
.method public nativeExtractCallback(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->currentSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->currentSize:J

    .line 147
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-wide v2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->currentSize:J

    iget-wide v4, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->totalSize:J

    iget-object v6, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;JJLcvk;)V

    .line 148
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->unzippedFiles:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->destPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 153
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->filter:Lcvl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->filter:Lcvl;

    iget-object v6, v0, Lcvl;->a:Ljava/lang/String;

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->filter:Lcvl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->filter:Lcvl;

    iget-object v7, v0, Lcvl;->b:Ljava/lang/String;

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-static {v0}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->sourceFilePath:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/wandoujia/base/utils/ZipUtil;->getUnCompressedSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->totalSize:J

    .line 157
    sget-object v0, Lcun;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->totalSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED_INSUFFICIENT_STORAGE:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    iget-object v3, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    .line 176
    :goto_2
    return-void

    .line 153
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 154
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-static {v0}, Lcom/wandoujia/gamepacket/UnZipManager;->b(Lcom/wandoujia/gamepacket/UnZipManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->UNZIPPING:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    iget-object v3, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    .line 167
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-static {v0}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->sourceFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->destPath:Ljava/lang/String;

    const-string v4, "nativeExtractCallback"

    iget-object v5, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    move-object v3, p0

    invoke-static/range {v0 .. v8}, Lcom/wandoujia/base/utils/ZipUtil;->extractGamePacket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->UNZ_OK:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    if-eq v0, v1, :cond_3

    .line 170
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    iget-object v3, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    .line 171
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->destPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/gamepacket/UnZipManager;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->token:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->SUCCESS:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    iget-object v3, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->this$0:Lcom/wandoujia/gamepacket/UnZipManager;

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->unzippedFiles:Ljava/util/Set;

    iget-object v2, p0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;->callback:Lcvk;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/util/Set;Lcvk;)V

    goto :goto_2
.end method
