.class public final enum Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;
.super Ljava/lang/Enum;
.source "DownloadDataList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

.field public static final enum COMPLETE_APP:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

.field public static final enum COMPLETE_MM:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

.field public static final enum INCOMPLETE:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;


# instance fields
.field private headerModel:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    const-string v1, "INCOMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->INCOMPLETE:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    const-string v1, "COMPLETE_MM"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->COMPLETE_MM:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    const-string v1, "COMPLETE_APP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->COMPLETE_APP:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    .line 313
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->INCOMPLETE:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->COMPLETE_MM:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->COMPLETE_APP:Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

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
    .line 313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->getHeaderModel()Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    return-object v0
.end method

.method private getHeaderModel()Lcom/wandoujia/ripple_framework/model/Model;
    .locals 5

    .prologue
    .line 319
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->headerModel:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lhbk;->c:[I

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->headerModel:Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0

    .line 322
    :pswitch_0
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/ripple_framework/R$string;->running_tasks:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->headerModel:Lcom/wandoujia/ripple_framework/model/Model;

    goto :goto_0

    .line 329
    :pswitch_1
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/ripple_framework/R$string;->complete_tasks:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    sget-object v3, Lham;->f:Lham;

    iget-object v3, v3, Lhal;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->clear:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->text(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->headerModel:Lcom/wandoujia/ripple_framework/model/Model;

    goto/16 :goto_0

    .line 342
    :pswitch_2
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/ripple_framework/R$string;->cached_tasks:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_TITLE_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    sget-object v3, Lham;->f:Lham;

    iget-object v3, v3, Lhal;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->clear:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->text(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_MM:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->headerModel:Lcom/wandoujia/ripple_framework/model/Model;

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;
    .locals 1
    .parameter

    .prologue
    .line 313
    const-class v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/download/DownloadDataList$DownloadSection;

    return-object v0
.end method
