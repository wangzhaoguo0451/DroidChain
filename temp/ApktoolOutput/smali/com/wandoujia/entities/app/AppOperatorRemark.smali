.class public Lcom/wandoujia/entities/app/AppOperatorRemark;
.super Ljava/lang/Object;
.source "AppOperatorRemark.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private backgroundImage:Ljava/lang/String;

.field private commentContent:Ljava/lang/String;

.field private commentatorImage:Ljava/lang/String;

.field private commentatorName:Ljava/lang/String;

.field private editorName:Ljava/lang/String;

.field private editorUid:Ljava/lang/Long;

.field private id:Ljava/lang/Integer;

.field private packageName:Ljava/lang/String;

.field private updateDate:Ljava/util/Date;

.field private useComment:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->useComment:Z

    .line 35
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorUid:Ljava/lang/Long;

    .line 36
    return-void
.end method


# virtual methods
.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentatorImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditorUid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorUid:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->updateDate:Ljava/util/Date;

    return-object v0
.end method

.method public isUseComment()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->useComment:Z

    return v0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->backgroundImage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCommentContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentContent:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCommentatorImage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorImage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCommentatorName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setEditorName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setEditorUid(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorUid:Ljava/lang/Long;

    .line 116
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->id:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->packageName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUpdateDate(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->updateDate:Ljava/util/Date;

    .line 100
    return-void
.end method

.method public setUseComment(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->useComment:Z

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppCommentDetail {commentDetail=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commentatorImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentatorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->commentatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useComment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->useComment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->updateDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppOperatorRemark;->editorUid:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
