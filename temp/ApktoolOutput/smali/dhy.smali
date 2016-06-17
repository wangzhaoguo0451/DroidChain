.class public final synthetic Ldhy;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"


# static fields
.field public static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->values()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldhy;->b:[I

    :try_start_0
    sget-object v0, Ldhy;->b:[I

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Ldhy;->b:[I

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_IMAGE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_1
    invoke-static {}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->values()[Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldhy;->a:[I

    :try_start_2
    sget-object v0, Ldhy;->a:[I

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOAD_CLEAR_TASKS_ACTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
