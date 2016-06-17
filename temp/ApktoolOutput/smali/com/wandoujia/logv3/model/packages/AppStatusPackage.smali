.class public final Lcom/wandoujia/logv3/model/packages/AppStatusPackage;
.super Lcom/squareup/wire/Message;
.source "AppStatusPackage.java"


# static fields
.field public static final DEFAULT_APP_VERSION_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_APP_VERSION_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_INSTALLED:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_PREDOWNLOAD:Ljava/lang/Boolean;

.field public static final DEFAULT_PATTERN:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;


# instance fields
.field public final app_version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final app_version_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_installed:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_predownload:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->DEFAULT_IS_PREDOWNLOAD:Ljava/lang/Boolean;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->DEFAULT_IS_INSTALLED:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->DEFAULT_APP_VERSION_CODE:Ljava/lang/Integer;

    .line 23
    sget-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->AUTO:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->DEFAULT_PATTERN:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 57
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_predownload:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    .line 58
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_installed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    .line 61
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;-><init>(Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p1, p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    .line 69
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->hashCode:I

    .line 79
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 81
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 85
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->hashCode:I

    .line 87
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    :cond_3
    move v0, v1

    .line 81
    goto :goto_1

    :cond_4
    move v0, v1

    .line 82
    goto :goto_2

    :cond_5
    move v0, v1

    .line 83
    goto :goto_3
.end method
