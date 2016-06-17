.class final synthetic Leir;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager$AppState;->values()[Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leir;->c:[I

    :try_start_0
    sget-object v0, Leir;->c:[I

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->WAITING_INSTALL:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Leir;->c:[I

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Leir;->c:[I

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->PATCHING:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Leir;->c:[I

    sget-object v1, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLED:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    .line 267
    :goto_3
    invoke-static {}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->values()[Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leir;->b:[I

    :try_start_4
    sget-object v0, Leir;->b:[I

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Leir;->b:[I

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Leir;->b:[I

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Leir;->b:[I

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Leir;->b:[I

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    .line 256
    :goto_8
    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->values()[Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leir;->a:[I

    :try_start_9
    sget-object v0, Leir;->a:[I

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Leir;->a:[I

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
