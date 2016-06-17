.class public Lcom/wandoujia/push2/protocol/NormalBody;
.super Ljava/lang/Object;
.source "NormalBody.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLE_GOLD:I = 0x1

.field public static final STYLE_IRON:I = 0x0

.field public static final TYPE_KING:I = 0x1

.field public static final TYPE_PEOPLE:I = 0x0

.field public static final TYPE_TEST:I = 0x2


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "description"
    .end annotation
.end field

.field private download:Lcom/wandoujia/push2/protocol/Download;
    .annotation runtime Lcwj;
        a = "download"
    .end annotation
.end field

.field private goldStyle:Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;
    .annotation runtime Lcwj;
        a = "gold_style"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "icon"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "id"
    .end annotation
.end field

.field private intent:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "intent"
    .end annotation
.end field

.field private ironStyle:Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;
    .annotation runtime Lcwj;
        a = "iron_style"
    .end annotation
.end field

.field private style:I
    .annotation runtime Lcwj;
        a = "style"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "title"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcwj;
        a = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Lcom/wandoujia/push2/protocol/Download;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->download:Lcom/wandoujia/push2/protocol/Download;

    return-object v0
.end method

.method public getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->goldStyle:Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getIronStyle()Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->ironStyle:Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->style:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/push2/protocol/NormalBody;->type:I

    return v0
.end method
