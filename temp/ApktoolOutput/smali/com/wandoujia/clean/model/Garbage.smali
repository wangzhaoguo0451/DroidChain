.class public interface abstract Lcom/wandoujia/clean/model/Garbage;
.super Ljava/lang/Object;
.source "Garbage.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAlertInfo()Ljava/lang/String;
.end method

.method public abstract getContentTypeId()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getGarbageSize()J
.end method

.method public abstract getGarbageType()Lcom/wandoujia/clean/model/GarbageType;
.end method

.method public abstract getIconURI()Lcom/wandoujia/image/ImageUri;
.end method

.method public abstract getId()J
.end method

.method public abstract getRelativeFilePath()Ljava/lang/String;
.end method

.method public abstract getSubTitle()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract showAction()Z
.end method
