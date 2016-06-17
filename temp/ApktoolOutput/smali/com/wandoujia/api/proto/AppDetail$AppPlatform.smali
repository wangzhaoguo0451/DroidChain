.class public final enum Lcom/wandoujia/api/proto/AppDetail$AppPlatform;
.super Ljava/lang/Enum;
.source "AppDetail.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/AppDetail$AppPlatform;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

.field public static final enum ANDROID:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

.field public static final enum BOTH:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

.field public static final enum IOS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

.field public static final enum MEDIA_PRESS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 677
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->ANDROID:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 678
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->IOS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 679
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->BOTH:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 680
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    const-string v1, "MEDIA_PRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->MEDIA_PRESS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 675
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    sget-object v1, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->ANDROID:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->IOS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->BOTH:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->MEDIA_PRESS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->$VALUES:[Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 685
    iput p3, p0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->value:I

    .line 686
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$AppPlatform;
    .locals 1
    .parameter

    .prologue
    .line 675
    const-class v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/AppDetail$AppPlatform;
    .locals 1

    .prologue
    .line 675
    sget-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->$VALUES:[Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->value:I

    return v0
.end method
