.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private custom_field_options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustom_field_options()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;->custom_field_options:Ljava/util/List;

    return-object v0
.end method
