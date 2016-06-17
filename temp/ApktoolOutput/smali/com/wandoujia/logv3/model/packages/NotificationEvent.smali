.class public final Lcom/wandoujia/logv3/model/packages/NotificationEvent;
.super Lcom/squareup/wire/Message;
.source "NotificationEvent.java"


# static fields
.field public static final DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->SHOW:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 50
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;-><init>(Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 61
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;

    .line 62
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 71
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->hashCode:I

    .line 72
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->hashCode()I

    move-result v0

    .line 74
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->hashCode:I

    .line 80
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_1

    :cond_4
    move v0, v1

    .line 75
    goto :goto_2

    :cond_5
    move v0, v1

    .line 76
    goto :goto_3
.end method
