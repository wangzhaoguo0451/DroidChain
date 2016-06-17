.class public final Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;
.super Lcom/squareup/wire/Message;
.source "ApplicationCrashEvent.java"


# static fields
.field public static final DEFAULT_ACTIVITY:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_LAUNCH:Ljava/lang/Boolean;

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;


# instance fields
.field public final activity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final detail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_launch:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->APP_CRASH:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->DEFAULT_IS_LAUNCH:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 55
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 58
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->is_launch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    .line 67
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 76
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->hashCode:I

    .line 77
    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->hashCode()I

    move-result v0

    .line 79
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->hashCode:I

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 78
    goto :goto_0

    :cond_3
    move v0, v1

    .line 79
    goto :goto_1

    :cond_4
    move v0, v1

    .line 80
    goto :goto_2

    :cond_5
    move v0, v1

    .line 81
    goto :goto_3
.end method
