.class public final Ladi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ladi;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Ladi;->a:Ladi;

    iget-object v0, v0, Ladi;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized b()Ladi;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 108
    const-class v6, Ladi;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 109
    new-instance v7, Ladh;

    invoke-direct {v7, v0}, Ladh;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const-wide/16 v4, 0x0

    .line 115
    :try_start_1
    invoke-static {v0}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v2

    invoke-virtual {v2}, Ladd;->a()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v0}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->b()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    :cond_0
    invoke-virtual {v7, v3, v0}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 121
    :try_start_2
    invoke-virtual {v7, v3, v0}, Ladh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v7, v3, v0}, Ladh;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    move-object v3, v2

    move-object v2, v1

    move-wide v0, v4

    .line 136
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ladh;->close()V

    .line 137
    invoke-static {}, Ladi;->e()V

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Ladi;->a:Ladi;

    iget-object v4, v4, Ladi;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 139
    sget-object v2, Ladi;->a:Ladi;

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ladi;->c:Ljava/lang/String;

    .line 146
    :cond_1
    :goto_1
    sget-object v2, Ladi;->a:Ladi;

    iput-wide v0, v2, Ladi;->d:J

    .line 147
    sget-object v0, Ladi;->a:Ladi;

    iput-object v3, v0, Ladi;->b:Ljava/lang/String;

    .line 150
    :goto_2
    sget-object v0, Ladi;->a:Ladi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v0

    .line 125
    :cond_2
    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v7, v3, v0, v2, v8}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v1

    move-object v3, v1

    move-wide v0, v4

    .line 133
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    .line 134
    :goto_3
    :try_start_5
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v3

    const-string v8, "read tid fail"

    invoke-virtual {v3, v0, v8}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 136
    :try_start_6
    invoke-virtual {v7}, Ladh;->close()V

    .line 137
    invoke-static {}, Ladi;->e()V

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ladi;->a:Ladi;

    iget-object v0, v0, Ladi;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    sget-object v0, Ladi;->a:Ladi;

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ladi;->c:Ljava/lang/String;

    .line 146
    :cond_3
    :goto_4
    sget-object v0, Ladi;->a:Ladi;

    iput-wide v4, v0, Ladi;->d:J

    .line 147
    sget-object v0, Ladi;->a:Ladi;

    iput-object v2, v0, Ladi;->b:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 140
    :cond_4
    :try_start_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    sget-object v0, Ladi;->a:Ladi;

    iget-object v0, v0, Ladi;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    :cond_5
    sget-object v0, Ladi;->a:Ladi;

    iput-object v1, v0, Ladi;->c:Ljava/lang/String;

    goto :goto_4

    .line 135
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 136
    :goto_5
    invoke-virtual {v7}, Ladh;->close()V

    .line 137
    invoke-static {}, Ladi;->e()V

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Ladi;->a:Ladi;

    iget-object v3, v3, Ladi;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 139
    sget-object v1, Ladi;->a:Ladi;

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ladi;->c:Ljava/lang/String;

    .line 146
    :cond_6
    :goto_6
    sget-object v1, Ladi;->a:Ladi;

    iput-wide v4, v1, Ladi;->d:J

    .line 147
    sget-object v1, Ladi;->a:Ladi;

    iput-object v2, v1, Ladi;->b:Ljava/lang/String;

    .line 148
    throw v0

    .line 140
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    sget-object v3, Ladi;->a:Ladi;

    iget-object v3, v3, Ladi;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    :cond_8
    sget-object v3, Ladi;->a:Ladi;

    iput-object v1, v3, Ladi;->c:Ljava/lang/String;

    goto :goto_6

    .line 140
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 141
    sget-object v4, Ladi;->a:Ladi;

    iget-object v4, v4, Ladi;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    :cond_a
    sget-object v4, Ladi;->a:Ladi;

    iput-object v2, v4, Ladi;->c:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 135
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 133
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public static c()Ljava/util/List;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 172
    new-instance v1, Ladh;

    invoke-direct {v1, v0}, Ladh;-><init>(Landroid/content/Context;)V

    .line 174
    :try_start_0
    invoke-virtual {v1}, Ladh;->a()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    invoke-virtual {v1}, Ladh;->close()V

    .line 176
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ladh;->close()V

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {v1}, Ladh;->close()V

    .line 179
    throw v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method private static e()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ladi;->a:Ladi;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ladi;

    invoke-direct {v0}, Ladi;-><init>()V

    sput-object v0, Ladi;->a:Ladi;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ladi;->e()V

    .line 88
    sget-object v0, Ladi;->a:Ladi;

    iget-object v1, p0, Ladi;->b:Ljava/lang/String;

    iput-object v1, v0, Ladi;->b:Ljava/lang/String;

    .line 89
    sget-object v0, Ladi;->a:Ladi;

    iget-object v1, p0, Ladi;->c:Ljava/lang/String;

    iput-object v1, v0, Ladi;->c:Ljava/lang/String;

    .line 90
    sget-object v0, Ladi;->a:Ladi;

    iget-wide v2, p0, Ladi;->d:J

    iput-wide v2, v0, Ladi;->d:J

    .line 91
    new-instance v1, Ladh;

    invoke-direct {v1, p1}, Ladh;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-static {p1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v2

    invoke-virtual {v2}, Ladd;->b()Ljava/lang/String;

    move-result-object v2

    .line 95
    sget-object v3, Ladi;->a:Ladi;

    iget-object v3, v3, Ladi;->b:Ljava/lang/String;

    sget-object v4, Ladi;->a:Ladi;

    iget-object v4, v4, Ladi;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :try_start_2
    invoke-virtual {v1}, Ladh;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_3
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    const-string v3, "save tid error"

    invoke-virtual {v2, v0, v3}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    invoke-virtual {v1}, Ladh;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    :try_start_5
    invoke-virtual {v1}, Ladh;->close()V

    .line 100
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
