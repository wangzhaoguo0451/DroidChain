.class public interface abstract annotation Lcom/squareup/wire/ProtoField;
.super Ljava/lang/Object;
.source "ProtoField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/squareup/wire/ProtoField;
        deprecated = false
        label = .enum Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;
        type = .enum Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract deprecated()Z
.end method

.method public abstract label()Lcom/squareup/wire/Message$Label;
.end method

.method public abstract tag()I
.end method

.method public abstract type()Lcom/squareup/wire/Message$Datatype;
.end method
