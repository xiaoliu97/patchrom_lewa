.class public final LWUPSYNC/GROUPITEM;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static cache_idList:Ljava/util/ArrayList;


# instance fields
.field public groupName:Ljava/lang/String;

.field public idList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->groupName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->groupName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    iput-object p1, p0, LWUPSYNC/GROUPITEM;->groupName:Ljava/lang/String;

    iput-object p2, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->groupName:Ljava/lang/String;

    sget-object v0, LWUPSYNC/GROUPITEM;->cache_idList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/GROUPITEM;->cache_idList:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LWUPSYNC/GROUPITEM;->cache_idList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/GROUPITEM;->cache_idList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/GROUPITEM;->groupName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/GROUPITEM;->idList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    return-void
.end method
